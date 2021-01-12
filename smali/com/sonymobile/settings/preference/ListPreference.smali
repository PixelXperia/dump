.class public Lcom/sonymobile/settings/preference/ListPreference;
.super Landroidx/preference/ListPreference;
.source "ListPreference.java"

# interfaces
.implements Lcom/sonymobile/settings/preference/util/DependOn;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mValueOfSettingsGlobal:Ljava/lang/String;

.field private final mValueOfSettingsSecure:Ljava/lang/String;

.field private final mValueOfSettingsSystem:Ljava/lang/String;

.field private final mValueOfSystemProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/settings/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lcom/sonymobile/settings/preference/util/DependOnUtil;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/sonymobile/settings/preference/util/DependOnUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    .line 58
    sget-object v0, Lcom/android/settings/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xa

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    const/16 p2, 0x8

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    const/16 p2, 0x9

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    const/4 p2, 0x7

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/preference/ListPreference;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/ListPreference;->updateListPreference()V

    return-void
.end method

.method private persistValue(Ljava/lang/String;)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 76
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private updateListPreference()V
    .locals 3

    .line 96
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 100
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 117
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 122
    :cond_5
    invoke-virtual {p0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 124
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dependOn()Z
    .locals 3

    .line 136
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 138
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0, v0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->dependOn(Landroid/content/Context;Landroidx/preference/Preference;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getAfter()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getBefore()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParentKey()Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mDependOnUtil:Lcom/sonymobile/settings/preference/util/DependOnUtil;

    invoke-virtual {p0}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasResumeActions()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSystemProperty:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

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

    .line 203
    iget-object v0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 210
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonymobile/settings/preference/ListPreference;->persistValue(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 166
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/ListPreference;->updateListPreference()V

    .line 169
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSystem:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 170
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsSecure:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 172
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/preference/ListPreference;->mValueOfSettingsGlobal:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 174
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 177
    iget-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_3

    .line 178
    new-instance v2, Lcom/sonymobile/settings/preference/ListPreference$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/settings/preference/ListPreference$1;-><init>(Lcom/sonymobile/settings/preference/ListPreference;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    .line 192
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/sonymobile/settings/preference/ListPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    return-void
.end method
