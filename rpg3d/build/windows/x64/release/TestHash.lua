

lfs = lfs or require('lfs')


local FileList =
{
	--'D:/UEProject/TestProject/PersistentDownloadDir/DLC/NonCooked_LuaScript.pak',
	'D:/GameData/ClassicRPG/WindowsNoEditor/FullAsset/20011103/NonCooked_LuaScript.pak',
	'D:/GameData/ClassicRPG/WindowsNoEditor/FullAsset/20011104/NonCooked_LuaScript.pak',
}

print('----')
for k, v in pairs(FileList) do
	local Val = lfs.XXHash32File(v)
	print(tostring(Val))
end
print('----')