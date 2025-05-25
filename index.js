import {AppRegistry, View, Text} from 'react-native';

function App() {
  return (
    <View style={{flex: 1, justifyContent: 'center', alignItems: 'center'}}>
      <Text>Hello, world!</Text>
    </View>
  );
}

AppRegistry.registerComponent('SwiftUIReactSubviewExample', () => App);
