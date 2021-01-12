.class public Lcom/sonymobile/settings/preference/IntentPreference;
.super Landroidx/preference/Preference;
.source "IntentPreference.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/DependOn;


# instance fields
.field private final mChooserTitle:Ljava/lang/String;

.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mValueOfSettingsGlobal:Ljava/lang/String;

.field private final mValueOfSettingsSecure:Ljava/lang/String;

.field private final mValueOfSettingsSystem:Ljava/lang/String;

.field private final mValueOfSystemProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04024f

    const v1, 0x101008e

    .line 78
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/settings/preference/IntentPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    .line 62
    sget-object v0, Lcom/android/settings/R$styleable;->IntentPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 64
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mChooserTitle:Ljava/lang/String;

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    sget-object p3, Lcom/android/settings/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, p3, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xa

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSystemProperty:Ljava/lang/String;

    const/16 p2, 0x8

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    const/16 p2, 0x9

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    const/4 p2, 0x7

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/preference/IntentPreference;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->updateIntentPreference()V

    return-void
.end method

.method private updateIntentPreference()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 167
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSystemProperty:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    :goto_0
    move v1, v0

    goto :goto_1

    .line 174
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 175
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 177
    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SomcPreferences"

    const-string v2, "SettingNotFoundException"

    .line 180
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    if-ltz v1, :cond_4

    .line 182
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v2, v0

    if-gt v1, v2, :cond_4

    .line 183
    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 185
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public dependOn()Z
    .locals 3

    .line 98
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroidx/preference/Preference;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParentKey()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasResumeActions()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

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

.method protected onClick()V
    .locals 2

    .line 198
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 199
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 201
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mChooserTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 202
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 205
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityNotFoundException on preference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SomcPreferences"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 129
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/IntentPreference;->updateIntentPreference()V

    .line 131
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 134
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 136
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 139
    iget-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_3

    .line 140
    new-instance v1, Lcom/sonymobile/settings/preference/IntentPreference$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/settings/preference/IntentPreference$1;-><init>(Lcom/sonymobile/settings/preference/IntentPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    .line 150
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/sonymobile/settings/preference/IntentPreference;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method
