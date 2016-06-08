function ICP(usernote)
%The first step. Takes a note name assigned by the user
%and translates it into MIDI numbers. Spits out the MIDI number.

%prompt = 'Input note name: ';
usernote = input('Input note name: ', 's');
note = upper(usernote);

MIDI = {'C', 0; 'C#', 1; 'DB', 1; 'D', 2; 'D#', 3; 'EB', 3;
    'E', 4; 'F', 5; 'F#', 6; 'GB', 6; 'G', 7; 'G#', 8; 'AB', 8;
    'A', 9; 'A#', 10; 'BB', 10; 'B', 11};
[MidiRow,MidiCol] = size(MIDI);
i = 1;

for letter = i:MidiRow
    stringcomp = strcmp(note,MIDI{letter,1});
    if stringcomp == 1
        output = MIDI(letter,2)
    end
end


