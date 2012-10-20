/**
 * Created by IntelliJ IDEA.
 * User: bsideup
 * Date: 18.10.12
 * Time: 15:56
 */
package ru.trylogic.dummy.views.dummyApplicationView
{
	import flash.display.BitmapData;

	import mx.states.State;

	import ru.trylogic.gui.components.button.Button;
	import ru.trylogic.gui.components.image.Image;

	import tl.viewController.ViewController;
	import tl.viewController.event;

	import tl.viewController.outlet;

	use namespace outlet;

	public class DummyApplicationViewController extends ViewController
	{

		outlet var myButton : Button;
		outlet var myImage : Image;

		outlet var defaultState : State;
		outlet var imageState : State;

		public function DummyApplicationViewController()
		{
		}

		override lifecycle function viewBeforeAddedToStage() : void
		{
			myButton.text = "Click me!";
		}

		event function myButtonTapped() : void
		{
			myButton.text = "Well done!";

			view.currentState = imageState.name;

			(myImage.texture as BitmapData).noise(Math.random() * 100);
		}
	}
}
