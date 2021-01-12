.class public Lcom/sonymobile/settings/preference/util/TwoStateUtil;
.super Ljava/lang/Object;
.source "TwoStateUtil.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private final mIsOrderedBroadcast:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mPreference:Landroidx/preference/TwoStatePreference;

.field private final mValueOfSettingsGlobal:Ljava/lang/String;

.field private final mValueOfSettingsSecure:Ljava/lang/String;

.field private final mValueOfSettingsSystem:Ljava/lang/String;

.field private final mValueOfSystemProperty:Ljava/lang/String;

.field private final mValueOnExtraStatusName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroidx/preference/TwoStatePreference;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroidx/preference/TwoStatePreference;

    .line 48
    sget-object v0, Lcom/android/settings/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xa

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    const/16 p2, 0x8

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    const/16 p2, 0x9

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    const/4 p2, 0x7

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    const/4 p2, 0x4

    .line 55
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIsOrderedBroadcast:Z

    const/16 p2, 0xb

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.extra.RETURN_RESULT"

    .line 57
    :goto_0
    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    invoke-virtual {p4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)Landroidx/preference/TwoStatePreference;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroidx/preference/TwoStatePreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->updateCheckBox()V

    return-void
.end method

.method private createOrderedBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 135
    new-instance v0, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil$1;-><init>(Lcom/sonymobile/settings/preference/util/TwoStateUtil;)V

    return-object v0
.end method

.method private onChecked(Z)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    .line 110
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    .line 114
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    .line 118
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return-void
.end method

.method private updateCheckBox()V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 71
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 72
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_1

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 89
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public hasResumeActions()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSystemProperty:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onPause()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .line 231
    check-cast p2, Ljava/lang/Boolean;

    .line 232
    iget-object p1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 235
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 236
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 237
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    iget-boolean v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIsOrderedBroadcast:Z

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->createOrderedBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    :cond_0
    new-instance v8, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 247
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOnExtraStatusName:Ljava/lang/String;

    invoke-virtual {v8, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mOrderedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroidx/preference/TwoStatePreference;

    .line 250
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 248
    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->onChecked(Z)V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onResume()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->updateCheckBox()V

    .line 175
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 178
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 180
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 183
    iget-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_3

    .line 184
    new-instance v2, Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/settings/preference/util/TwoStateUtil$2;-><init>(Lcom/sonymobile/settings/preference/util/TwoStateUtil;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    .line 198
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/TwoStateUtil;->mIntent:Landroid/content/Intent;

    return-void
.end method
