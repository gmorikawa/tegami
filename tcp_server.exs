defmodule SimpleTCPServer do

  @port 3000

  def start do
    {:ok, socket} =
      :gen_tcp.listen(@port, [:binary, packet: :line, active: false, reuseaddr: true])

    IO.puts("Server running on port #{@port}...")

    accept_loop(socket)
  end

  defp accept_loop(socket) do
    {:ok, client} = :gen_tcp.accept(socket)
    spawn(fn -> handle_client(client) end)
    accept_loop(socket)
  end

  defp handle_client(socket) do
    :gen_tcp.send(socket, "200 TCPServer Ready\r\n")
    read_message(socket, [])
  end

  defp read_message(socket, acc) do
    case :gen_tcp.recv(socket, 0) do
      { :ok, data } ->
        IO.puts("Received: #{String.trim(data)}")
        read_message(socket, [acc | data])

        { :error, :closed } ->
          full_message = acc |> IO.iodata_to_binary() |> String.trim()
          IO.puts("\n Connection closed. Full message received:\n---#{full_message}\n---\n")
          :ok
    end
  end
end

# Run the server
SimpleTCPServer.start()
