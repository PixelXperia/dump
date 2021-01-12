.class public Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;
.super Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;
.source "KddiEnhanced4gLtePreferenceController.java"

# interfaces
.implements Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment$KddiInternationalRoamingDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;,
        Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EVENT_SET_4GSWITCH_STATE_COMPLETE:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "KddiEnhanced4gLtePreference"

.field private static final PREFERRED_NETWORK_TAG:Ljava/lang/String; = "KddiEnhanced4gLtePreferenceController"

.field private static final SEND_4GSWITCH_SETTING_COMPLETE_DELAY:I = 0x1388


# instance fields
.field private mDialogFragment:Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mHandler:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;

.field private mLte4gSwitchHandler:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferredNetworkMode:I

.field private mPreferredNetworkModeBeforeSet:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    sget p1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mPreferredNetworkMode:I

    .line 44
    sget p1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mPreferredNetworkModeBeforeSet:I

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->handleLte4gSwitchChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mPreferredNetworkModeBeforeSet:I

    return p0
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->setPreferredNetworkMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mDialogFragment:Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;

    return-object p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mHandler:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)I
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->getPreferredNetworkModeForSubId()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private getPreferredNetworkModeForSubId()I
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 161
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred_network_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mPreferredNetworkMode:I

    .line 160
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 164
    sget-boolean v1, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredNetworkModeForSubId: phoneNwMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KddiEnhanced4gLtePreference"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private handleLte4gSwitchChange()V
    .locals 3

    .line 233
    sget-boolean v0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "KddiEnhanced4gLtePreference"

    const-string v1, "handleLte4gSwitchChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mLte4gSwitchHandler:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 236
    iget-object p0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mLte4gSwitchHandler:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setLte4gSwitchSetting()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 137
    invoke-direct {p0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->getPreferredNetworkModeForSubId()I

    move-result p0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    .line 138
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 140
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private setPreferredNetworkMode(I)V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 147
    sget-boolean v1, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferredNetworkMode: nwMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " SubId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KddiEnhanced4gLtePreference"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iput p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mPreferredNetworkMode:I

    .line 150
    iget-object v1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    iget-object p0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0, p1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus(I)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public init(Landroidx/fragment/app/FragmentManager;I)Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;
    .locals 0

    .line 56
    invoke-super {p0, p2}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    .line 58
    iput-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 59
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 60
    new-instance p1, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;-><init>(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$1;)V

    iput-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mLte4gSwitchHandler:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$Lte4gSwitchHandler;

    .line 61
    new-instance p1, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;

    invoke-direct {p1, p0, p2}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;-><init>(Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$1;)V

    iput-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mHandler:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;

    const/16 p1, 0x65

    .line 63
    invoke-static {p1}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;->newInstance(I)Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mDialogFragment:Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;

    .line 64
    iget-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mDialogFragment:Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;

    invoke-virtual {p1, p0}, Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment;->addListener(Lcom/sonymobile/settings/network/telephony/KddiInternationalRoamingDialogFragment$KddiInternationalRoamingDialogListener;)V

    return-object p0
.end method

.method public onDialogCancel(Landroidx/fragment/app/DialogFragment;)V
    .locals 4

    .line 124
    sget-boolean v0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "KddiEnhanced4gLtePreference"

    const-string v1, "onDialogCancel:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x63efe8b3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "KddiEnhanced4gLtePreferenceController"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 127
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->setLte4gSwitchSetting()V

    .line 132
    :goto_1
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onPositiveButtonClick(Landroidx/fragment/app/DialogFragment;)V
    .locals 4

    .line 111
    sget-boolean v0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "KddiEnhanced4gLtePreference"

    const-string v1, "onPositiveButtonClick:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x63efe8b3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "KddiEnhanced4gLtePreferenceController"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 114
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->setLte4gSwitchSetting()V

    .line 119
    :goto_1
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 87
    sget-boolean v0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KddiEnhanced4gLtePreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->getPreferredNetworkModeForSubId()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mPreferredNetworkModeBeforeSet:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_0

    :cond_1
    move p1, v0

    .line 98
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->setPreferredNetworkMode(I)V

    .line 99
    iget-object v1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mHandler:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;

    .line 100
    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 99
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 101
    iget-object p1, p0, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->mHandler:Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController$MyHandler;

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    .line 101
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 104
    invoke-direct {p0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->handleLte4gSwitchChange()V

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 79
    invoke-direct {p0}, Lcom/sonymobile/settings/network/telephony/KddiEnhanced4gLtePreferenceController;->setLte4gSwitchSetting()V

    .line 80
    check-cast p1, Landroidx/preference/SwitchPreference;

    const p0, 0x7f12093c

    .line 81
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    const p0, 0x7f12093b

    .line 82
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
