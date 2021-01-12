.class public Lcom/android/settings/dream/WhenToDreamPicker;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "WhenToDreamPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;
    }
.end annotation


# instance fields
.field private mBackend:Lcom/android/settingslib/dream/DreamBackend;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method private entries()[Ljava/lang/String;
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0300c3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private keys()[Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0300c4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/android/settings/dream/WhenToDreamPicker;->entries()[Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/dream/WhenToDreamPicker;->keys()[Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_5

    .line 64
    array-length v3, v0

    if-gtz v3, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_4

    .line 65
    array-length v3, v1

    array-length v4, v0

    if-ne v3, v4, :cond_4

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const/4 v4, 0x0

    .line 71
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    if-nez v3, :cond_1

    .line 73
    aget-object v5, v1, v4

    const-string v6, "while_docked_only"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v1, v4

    const-string v6, "either_charging_or_docked"

    .line 74
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    new-instance v5, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;

    aget-object v6, v0, v4

    aget-object v7, v1, v4

    invoke-direct {v5, p0, v6, v7}, Lcom/android/settings/dream/WhenToDreamPicker$WhenToDreamCandidateInfo;-><init>(Lcom/android/settings/dream/WhenToDreamPicker;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2

    .line 66
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Entries and values must be of the same length."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 96
    iget-object p0, p0, Lcom/android/settings/dream/WhenToDreamPicker;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-static {p0, v0}, Lcom/android/settings/dream/DreamSettings;->getWhenToDreamSettings(Lcom/android/settingslib/dream/DreamBackend;Z)I

    move-result p0

    .line 98
    invoke-static {p0}, Lcom/android/settings/dream/DreamSettings;->getKeyFromSetting(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1500d7

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 45
    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/WhenToDreamPicker;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-void
.end method

.method protected onSelectionPerformed(Z)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onSelectionPerformed(Z)V

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/dream/WhenToDreamPicker;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-static {p1}, Lcom/android/settings/dream/DreamSettings;->getSettingFromPrefKey(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setWhenToDream(I)V

    const/4 p0, 0x1

    return p0
.end method
