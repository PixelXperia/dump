.class public Lcom/android/settings/users/UserDetailsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

.field private mAllowCallsSmsMessageView:Landroid/view/View;

.field private mAllowCallsSmsOkActivated:Z

.field private mAllowCallsSmsScrollView:Landroid/view/View;

.field private mDefaultGuestRestrictions:Landroid/os/Bundle;

.field private mGuestUser:Z

.field private mIsShowCustomizingDialog:Z

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mPhonePref:Landroidx/preference/SwitchPreference;

.field private mRemoveUserPref:Landroidx/preference/Preference;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mIsShowCustomizingDialog:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsOkActivated:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->initializeAllowCallsSmsDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/UserDetailsSettings;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->isAllowCallsSmsDialogFullyScrolled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/users/UserDetailsSettings;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/users/UserDetailsSettings;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsOkActivated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->removeListenersForAllowCallsSmsDialog()V

    return-void
.end method

.method private initializeAllowCallsSmsDialog()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

    const v1, 0x7f0a038a

    .line 315
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsScrollView:Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

    const v1, 0x102000b

    .line 317
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsMessageView:Landroid/view/View;

    .line 320
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 324
    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserDetailsSettings$8;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 335
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 336
    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserDetailsSettings$9;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 347
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method private isAllowCallsSmsDialogFullyScrolled()Z
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsScrollView:Landroid/view/View;

    .line 366
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsMessageView:Landroid/view/View;

    .line 367
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private removeListenersForAllowCallsSmsDialog()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsScrollView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 355
    iput-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 359
    iput-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_1
    return-void
.end method


# virtual methods
.method enableCallsAndSms(Z)V
    .locals 6

    .line 181
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 182
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    const-string v1, "no_sms"

    const-string v2, "no_outgoing_calls"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    xor-int/2addr p1, v3

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 191
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 193
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 197
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 196
    invoke-virtual {v3, v2, v4, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 203
    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v2, v5, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 205
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    xor-int/2addr p1, v3

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    :cond_2
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x251

    return p0

    :cond_1
    const/16 p0, 0x250

    return p0

    :cond_2
    const/16 p0, 0x24f

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x62

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "allow_calls_sms_ok_activated"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsOkActivated:Z

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "user"

    .line 114
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const v0, 0x7f1500cc

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "enable_calling"

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    const-string v0, "remove_user"

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "guest_user"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    .line 122
    iget-boolean v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    const-string v2, "no_outgoing_calls"

    if-nez v1, :cond_2

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, -0x1

    const-string v4, "user_id"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 129
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 126
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Arguments to this fragment must contain the user id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 136
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    const v3, 0x7f1213fc

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 138
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mDefaultGuestRestrictions:Landroid/os/Bundle;

    .line 139
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 138
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 142
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_remove_user"

    .line 141
    invoke-static {p1, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mIsShowCustomizingDialog:Z

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 255
    iget-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mIsShowCustomizingDialog:Z

    if-eqz p1, :cond_2

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$5;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createEnablePhoneCallsAndSmsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

    .line 263
    iget-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsOkActivated:Z

    if-nez p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$6;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 271
    :cond_1
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0

    .line 273
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$7;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createEnablePhoneCallsAndSmsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 281
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported dialogId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 229
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mIsShowCustomizingDialog:Z

    if-eqz p1, :cond_6

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$2;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createEnablePhoneCallsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

    .line 237
    iget-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsOkActivated:Z

    if-nez p1, :cond_5

    .line 238
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$3;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 245
    :cond_5
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0

    .line 247
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$4;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createEnablePhoneCallsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 222
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserDetailsSettings$1;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onDialogShowing()V
    .locals 0

    .line 211
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 213
    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 299
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 300
    iput-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsOkActivated:Z

    .line 301
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->removeListenersForAllowCallsSmsDialog()V

    const/4 p1, 0x0

    .line 302
    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsScrollView:Landroid/view/View;

    .line 303
    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsMessageView:Landroid/view/View;

    .line 304
    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 171
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 172
    iget-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUser:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return p2

    .line 176
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 160
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return p1

    .line 161
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only admins can remove a user"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    iget-boolean p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAllowCallsSmsOkActivated:Z

    const-string v0, "allow_calls_sms_ok_activated"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method removeUser()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void
.end method
