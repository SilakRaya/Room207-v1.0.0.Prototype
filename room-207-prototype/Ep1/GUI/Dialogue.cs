using Godot;
using System;

public partial class MyControl : Control
{
    // Encapsulation
    // Enter dialogue here! through properties
    [Export]
    public string[] JolinaLines { get; set; } = new string[] { "DUMMY" };

    [Export]
    public bool Repeat { get; set; } = false;

    [Export]
    public float TypingSpeed { get; set; } = 0.1f;

    private string _fullText = "";
    private int _index = 0;
    private int _dialogue = 0;
    private bool _typing = false;

    private Timer _typingTimer;

    private Label TextLabel => GetNode<Label>("%Text");

    public override void _Ready()
    {
        _typingTimer = GetNode<Timer>("TypingTimer");
        DisplayText(JolinaLines[_dialogue]);
    }

    public override void _Process(double delta)
    {
        if (Input.IsActionJustPressed("mobile_dialogue"))
        {
            GD.Print("Detected");
            SwitchText();
        }
    }

    // Abstraction
    private void DisplayText(string newText)
    {
        _typing = true; // this checks if it is still typing

        _fullText = newText;

        // Reset typing
        _index = 0;
        TextLabel.VisibleCharacters = 0;

        _typingTimer.WaitTime = TypingSpeed;
        _typingTimer.Start();

        TextLabel.Text = _fullText;
    }

    private void SwitchText()
    {
        if (_typing)
            return;

        if (_dialogue < JolinaLines.Length - 1)
        {
            _dialogue++;
        }
        else
        {
            if (Repeat)
            {
                _dialogue = 0;
            }
            else
            {
                return;
            }
        }

        DisplayText(JolinaLines[_dialogue]);
    }

    // Timer signal handler
    private void OnTypingTimerTimeout()
    {
        _index++;
        TextLabel.VisibleCharacters = _index;

        if (_index >= _fullText.Length)
        {
            _typingTimer.Stop();
            _typing = false;
        }
    }
}