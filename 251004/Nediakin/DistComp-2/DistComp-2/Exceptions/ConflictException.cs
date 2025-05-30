﻿namespace DistComp.Exceptions;

public class ConflictException : Exception
{
    public int ErrorCode { get; }
    public ConflictException(int errorCode, string message) : base(message)
    {
        ErrorCode = errorCode;
    }
}