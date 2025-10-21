# README

This project is a study of [SMTP - Simple Mail Transfer Protocol](https://www.rfc-editor.org/rfc/rfc7504).

Tegami (手紙) is a email server highly customizable and secure.

## Study Case

A person receives lots of emails daily. Unfortunally, not all of these emails are important or relevant, most of them being spams or even phishing. Sometimes newsletters that the user didn't even wanted to receive because he have not subscribed to any newsletters, or he was tricked to do it so.

This person, likes to keep emails organized, because, even if he does not use very regularly those emails, he does not want to miss something important among many unnecessary emails.

## Features

* Separation of emails by folders;
* Ability to tag emails with custom labels;
* Definition of custom rules to automatize workflow;
* Block everything by default, only emails with permitted addresses will be received;

## Technology

The core of the application will be the email server.

* [Elixir](https://elixir-lang.org/);

## Study Resource

* [What is the Simple Mail Transfer Protocol (SMTP)? | Cloudflare](https://www.cloudflare.com/learning/email-security/what-is-smtp/);
* [RFC 5321: Simple Mail Transfer Protocol](https://www.rfc-editor.org/rfc/rfc5321);
* [Simple Mail Transfer Protocol (SMTP) Explained [2025]](https://mailtrap.io/blog/smtp/);