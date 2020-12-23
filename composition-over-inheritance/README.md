### Composition over inheritance

When inheritance is not strongly needed(in case you don't have hierarchies) prefer using composition over inheritance.
It allows to build smaller and reusable classes.

1 level of inheritance is ok to go.

### Inheritance

```ruby
class Inviter
  ...
  private

  def render_message_body
    render template 'message/body'
  end
end

class EmailInviter < Inviter
  def initialize(invitation)
    @invitation = invitation
  end

  def deliver
    Mailer.invitation_notification(@invitation, render_message_body).deliver
  end
end

class MessageInviter < Inviter
  def initialize(invitation, recipient)
    @invitation = invitation
    @recipient = recipient
  end

  def deliver
    Message.create!(recipient: @recipient, sender: @invitation.sender, body: render_message_body)
  end
end
```

### Composition

```ruby
class InvitationMessage
  def initialize(invitation)
    @invitation = invitation
  end

  def body
    render template 'message/body'
  end
end

class EmailInviter
  def initialize(invitation)
    @invitation = invitation
    @body = InvitationMessage.new(invitation)
  end

  def deliver
    Mailer.invitation_notification(@invitation, @body).deliver
  end
end

class MessageInviter
  def initialize(invitation, recipient)
    @invitation = invitation
    @recipient = recipient
    @body = InvitationMessage.new(@invitation).body
  end

  def deliver
    Message.create!(
      recipient: @recipient,
      sender: @invitation.sender,
      body: @body
    )
  end
end
```
