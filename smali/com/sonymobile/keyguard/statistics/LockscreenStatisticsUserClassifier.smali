.class public Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier;
.super Ljava/lang/Object;
.source "LockscreenStatisticsUserClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserType(Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 82
    sget-object p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->Unknown:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->label:Ljava/lang/String;

    return-object p0

    .line 86
    :cond_0
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez p0, :cond_1

    .line 87
    sget-object p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->Owner:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->label:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 89
    sget-object p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->PrimaryUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->label:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 91
    sget-object p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->AdminUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->label:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 93
    sget-object p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->RestrictedUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->label:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 96
    sget-object p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->GuestUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->label:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_5
    sget-object p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->SecondaryUser:Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;

    iget-object p0, p0, Lcom/sonymobile/keyguard/statistics/LockscreenStatisticsUserClassifier$UserType;->label:Ljava/lang/String;

    .line 101
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
