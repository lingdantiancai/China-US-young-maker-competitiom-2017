import wx 
 

class Frame(wx.Frame):
	
	def __init__(self,image,parent=None,id=-1,pos=wx.DefaultPosition,title='Hello'):
		temp = image.ConvertToBitmap()
		size = temp.GetWidth(),temp.GetHeight()
		wx.Frame.__init__(self,parent,id,title,pos,size)
		self.bmp = StaticBitmap(parent=self,bitmap=temp)

class App(wx.App):
	def OnInits(self):
		image = wx.Image('python.png',wx.BITMAP_TYPE_PNG)
		self.frame = Frame(image)
		self.frame.Show(True)
		self.SetTopWindow(self.frame)
		return True
def main():
	app = App(False)
	app.MainLoop()

if __name__=='__main__':
	main()