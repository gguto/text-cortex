/// <reference types='codeceptjs' />
type CustomCommands = import('./helpers/custom_commands_helper.js');
type GeneralHooks = import('./helpers/general_hooks.helper.js');

declare namespace CodeceptJS {
  interface SupportObject { I: I, current: any }
  interface Methods extends CustomCommands, GeneralHooks, REST {}
  interface I extends WithTranslation<Methods> {}
  namespace Translation {
    interface Actions {}
  }
}
