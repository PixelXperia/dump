.class public Lcom/sonymobile/settings/backup/BackupCardPreference;
.super Landroidx/preference/Preference;
.source "BackupCardPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;
    }
.end annotation


# instance fields
.field private mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

.field private mContentText1:Landroid/widget/TextView;

.field private mContentText2:Landroid/widget/TextView;

.field private mContentTypes:Landroid/view/ViewGroup;

.field private mDismissButton:Landroid/widget/Button;

.field private mEditButton:Landroid/widget/Button;

.field private mListener:Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;

.field private mShowWelcome:Z

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/backup/BackupCardPreference;)Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mListener:Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;

    return-object p0
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0d0188

    .line 166
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private setContentTypes(Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentTypes:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentTypes:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-string v1, ","

    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 109
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 111
    :try_start_0
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v0, :cond_1

    .line 113
    iget-object v4, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentTypes:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_2
    iget-object p0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentTypes:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateCard()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, ""

    .line 125
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->setContentTypes(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/settings/backup/BackupInfo;->hasRelevantErrors()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1210d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    invoke-virtual {v0}, Lcom/sonymobile/settings/backup/BackupInfo;->getLastUnsuccessfulBackupReason()I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    invoke-virtual {v1}, Lcom/sonymobile/settings/backup/BackupInfo;->getLastUnsuccessfulBackupLocation()I

    move-result v1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    const v1, 0x7f1210de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    const v1, 0x7f1210dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object p0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x3

    const v3, 0x7f1210e1

    if-ne v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    const v1, 0x7f1210d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText2:Landroid/widget/TextView;

    const v1, 0x7f1210d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    invoke-virtual {v0}, Lcom/sonymobile/settings/backup/BackupInfo;->getContentTypeIds()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->setContentTypes(Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mEditButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 150
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    const v1, 0x7f1210e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    invoke-virtual {v0}, Lcom/sonymobile/settings/backup/BackupInfo;->getContentTypeIds()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->setContentTypes(Ljava/lang/String;)V

    .line 155
    iget-object p0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 157
    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mShowWelcome:Z

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    const v1, 0x7f1210e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object p0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a00e1

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a00e0

    .line 78
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mSubTitle:Landroid/widget/TextView;

    const v0, 0x7f0a00dd

    .line 79
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText1:Landroid/widget/TextView;

    const v0, 0x7f0a00de

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentText2:Landroid/widget/TextView;

    const v0, 0x7f0a00df

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mContentTypes:Landroid/view/ViewGroup;

    const v0, 0x7f0a00d9

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mDismissButton:Landroid/widget/Button;

    const v0, 0x7f0a00da

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mEditButton:Landroid/widget/Button;

    .line 84
    iget-object p1, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mDismissButton:Landroid/widget/Button;

    new-instance v0, Lcom/sonymobile/settings/backup/BackupCardPreference$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/backup/BackupCardPreference$1;-><init>(Lcom/sonymobile/settings/backup/BackupCardPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mEditButton:Landroid/widget/Button;

    new-instance v0, Lcom/sonymobile/settings/backup/BackupCardPreference$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/backup/BackupCardPreference$2;-><init>(Lcom/sonymobile/settings/backup/BackupCardPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-direct {p0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->updateCard()V

    return-void
.end method

.method public setListener(Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mListener:Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;

    return-void
.end method

.method public showWelcome()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mShowWelcome:Z

    return-void
.end method

.method public update(Lcom/sonymobile/settings/backup/BackupInfo;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mBackupInfo:Lcom/sonymobile/settings/backup/BackupInfo;

    .line 57
    iget-object p1, p0, Lcom/sonymobile/settings/backup/BackupCardPreference;->mTitle:Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/backup/BackupCardPreference;->updateCard()V

    return-void
.end method
