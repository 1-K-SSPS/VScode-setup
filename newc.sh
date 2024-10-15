#!/bin/bash
dirc=$(find ./ -type d -name "*Project*" | wc -l)
echo "what are you writeing?"
read name
ymd=$(date +"%Y.%m.%d")
mkdir "$name-Project$dirc-$ymd"
cd "$name-Project$dirc-$ymd"
dotnet new console
dotnet build
mv Program.cs $name.cs 
echo "using System;

public class $name
{
    public static void Main(string[] args)
    {

    }
}" > $name.cs