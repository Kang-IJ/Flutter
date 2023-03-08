import 'story.dart';

class StoryBrain {
  int storyNumber = 0;

  String getStory(storyNumber) {
    return _storyData[storyNumber].storyTitle;
  }

  String getChoice1(storyNumber) {
    return _storyData[storyNumber].choice1;
  }

  String getChoice2(storyNumber) {
    return _storyData[storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1) {
      if (storyNumber == 0) {
        storyNumber = 2;
      } else if (storyNumber == 1) {
        storyNumber = 2;
      } else if (storyNumber == 2) {
        storyNumber = 5;
      } else if (storyNumber == 3 || storyNumber == 4 || storyNumber == 5) {
        restart();
      }
    } else if (choiceNumber == 2) {
      if (storyNumber == 0) {
        storyNumber = 1;
      } else if (storyNumber == 1) {
        storyNumber = 3;
      } else if (storyNumber == 2) {
        storyNumber = 4;
      } else if (storyNumber == 3 || storyNumber == 4 || storyNumber == 5) {
        restart();
      }
    }
  }

  void restart() {
    storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (storyNumber == 0 || storyNumber == 1 || storyNumber == 2) {
      return true;
    }
    return false;
  }
}

List<Story> _storyData = [
  Story(
      storyTitle:
          '휴대폰 신호가 잡히지 않는 한적하고 구불구불한 길에서 당신 차의 타이어가 터졌습니다. 당신은 히치하이크를 하기로 결정합니다. 녹슨 픽업트럭이 부릉거리며 당신 옆에 멈춥니다. 영혼 없는 눈을 가진 챙이 넓은 모자를 쓴 남자가 당신을 위해 조수석 문을 열고 "태워줄까, 얘야? "라고 묻습니다.',
      choice1: '탈게요. 도와주셔서 감사해요!',
      choice2: '그가 살인자인지 먼저 물어봐야겠어.'),
  Story(
      storyTitle: '질문에 동요하지 않은채 그는 천천히 고개를 끄덕인다.',
      choice1: '정직하긴 하네. 차에 타야겠어.',
      choice2: '잠깐, 나 타이어 어떻게 가는지 알잖아.'),
  Story(
      storyTitle:
          '그와 같이 차를 타고 가는데, 그가 어머니와의 관계에 대해 이야기하기 시작합니다. 그는 화를 내더니 점점 더 화를 내기 시작합니다. 그리고는 조수석 서랍을 열어달라고 합니다. 서랍 내부에는 피 묻은 칼, 잘린 손가락 두개, 엘튼존의 카세트테이프가 있습니다. 그가 서랍에 손을 뻗습니다.',
      choice1: '나도 엘튼존 팬인데! 그에게 카세트 테이프를 건네준다.',
      choice2: '죽기 아니면 살기다! 칼을 가져가서 그를 찌른다.'),
  Story(
      storyTitle: '뭐라고요? 교통사고가 성인 사고사의 두번째 주요 원인이라는 것을 알고계셨나요?',
      choice1: '다시 시작',
      choice2: ''),
  Story(
      storyTitle:
          '가드레일에 부딪혀 떨어지며 아래의 바위를 향해 돌진하면서 당신은 차를 운전하고 있는 사람을 찌르는 것은 좋은 생각이 아니었다고 생각합니다.',
      choice1: 'Restart',
      choice2: ''),
  Story(
      storyTitle:
          '당신은 살인자와 유대감을 형성하고 그는 당신을 다음 마을에서 내려줍니다. 당신이 가기 전에 그가 시체를 버릴 좋은 장소를 아느냐고 묻습니다. 당신은 "부두가 어떨까요"라고 대답합니다.',
      choice1: 'Restart',
      choice2: '')
];
