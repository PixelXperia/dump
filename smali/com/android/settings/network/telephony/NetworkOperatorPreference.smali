.class public Lcom/android/settings/network/telephony/NetworkOperatorPreference;
.super Landroidx/preference/Preference;
.source "NetworkOperatorPreference.java"


# instance fields
.field private mCellInfo:Landroid/telephony/CellInfo;

.field private mDisplayTitle:Ljava/lang/String;

.field private mForbiddenPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeAndEHPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLevel:I

.field private mShow4GForLTE:Z

.field private mShowRat:Z

.field private mUseNewApi:Z


# direct methods
.method public constructor <init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;ZZLjava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellInfo;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    .line 60
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    .line 61
    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mForbiddenPlmns:Ljava/util/List;

    .line 62
    iput-boolean p4, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mShow4GForLTE:Z

    .line 63
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111007b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mUseNewApi:Z

    .line 65
    iput-boolean p5, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mShowRat:Z

    .line 66
    iput-object p6, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mHomeAndEHPlmns:Ljava/util/List;

    .line 67
    iput-object p7, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mDisplayTitle:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->refresh()V

    return-void
.end method

.method private getIconIdForCell(Landroid/telephony/CellInfo;)I
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mShowRat:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    return v1

    :cond_1
    const p0, 0x7f0802df

    return p0

    .line 118
    :cond_2
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mShow4GForLTE:Z

    if-eqz p0, :cond_3

    const p0, 0x7f080258

    goto :goto_0

    :cond_3
    const p0, 0x7f0802e1

    :goto_0
    return p0

    :cond_4
    const p0, 0x7f0802de

    return p0

    :cond_5
    const p0, 0x7f0802e0

    return p0
.end method

.method private updateIcon(I)V
    .locals 4

    .line 128
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mUseNewApi:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    .line 133
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getIconIdForCell(Landroid/telephony/CellInfo;)I

    move-result v2

    const/4 v3, 0x0

    .line 132
    invoke-static {v1, p1, v0, v2, v3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSignalStrengthIcon(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCellInfo()Landroid/telephony/CellInfo;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    return-object p0
.end method

.method public refresh()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mDisplayTitle:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mForbiddenPlmns:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/settings/network/telephony/CellInfoUtil;->isForbidden(Landroid/telephony/CellInfo;Ljava/util/List;)Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12081b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mHomeAndEHPlmns:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/android/settings/network/telephony/CellInfoUtil;->isHome(Landroid/telephony/CellInfo;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1208e6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 91
    :goto_1
    iget v1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    if-eq v1, v0, :cond_3

    .line 92
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    .line 93
    iget v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateIcon(I)V

    :cond_3
    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateIcon(I)V

    return-void
.end method
