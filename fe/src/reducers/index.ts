import * as lodash from 'lodash';
import { FAVORITE_ON, FAVORITE_OFF } from "../actions";

let initialState = {
};

const favoriteReducer = (state = initialState, action: any) => {
  switch (action.type) {
    case FAVORITE_ON: 
      return { ...state };

    case FAVORITE_OFF: 
      return { ...state };
      
    default:
      return state;
  }
};

export default favoriteReducer;
