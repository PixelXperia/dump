.class public Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeStarredContactsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mFallbackIntent:Landroid/content/Intent;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreference:Landroidx/preference/Preference;

.field private final mPriorityCategory:I

.field private mStarredContactsIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;ILjava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p4, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 46
    iput p3, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPriorityCategory:I

    .line 47
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 49
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.contacts.action.LIST_STARRED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mStarredContactsIntent:Landroid/content/Intent;

    .line 51
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mFallbackIntent:Landroid/content/Intent;

    .line 52
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mFallbackIntent:Landroid/content/Intent;

    const-string p1, "android.intent.category.APP_CONTACTS"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private isIntentValid()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mStarredContactsIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mFallbackIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 108
    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

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


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 60
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMLCVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBackend;->getStarredContactsSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 5

    .line 72
    iget v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPriorityCategory:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 74
    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->isIntentValid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1

    :cond_1
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 78
    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->isIntentValid()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    return v1

    :cond_3
    return v4
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mStarredContactsIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mStarredContactsIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mFallbackIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
