.class public Lcom/sonymobile/settings/preference/util/DependOnUtil;
.super Ljava/lang/Object;
.source "DependOnUtil.java"


# instance fields
.field private mAdd:Z

.field private final mAfter:Ljava/lang/String;

.field private final mBefore:Ljava/lang/String;

.field private final mHasMetaData:Z

.field private final mHasSystemFeature:Ljava/lang/String;

.field private final mIsOwnerOnly:Z

.field private final mIsValidIntent:Z

.field private final mParent:Ljava/lang/String;

.field private final mSettingsSecure:Ljava/lang/String;

.field private final mSettingsSystem:Ljava/lang/String;

.field private final mSystemProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 98
    sget-object v1, Lcom/android/settings/R$styleable;->DependOnPreference:[I

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 100
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAfter:Ljava/lang/String;

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mBefore:Ljava/lang/String;

    const/16 p2, 0xa

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mParent:Ljava/lang/String;

    const/4 p2, 0x5

    .line 103
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    const/4 p2, 0x2

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    const/4 p2, 0x6

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    const/4 p2, 0x7

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    const/16 p2, 0x8

    .line 107
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    const/4 p2, 0x4

    .line 108
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsValidIntent:Z

    const/4 p2, 0x3

    .line 109
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsOwnerOnly:Z

    const/16 p2, 0x9

    .line 110
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    .line 111
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static addPreferencesFromResource(Landroid/content/Context;Landroidx/preference/PreferenceScreen;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/preference/PreferenceScreen;",
            "Lcom/sonymobile/settings/preference/util/PreferencesAdder;",
            "Ljava/util/Collection<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 599
    invoke-static {p1, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method private static addPreferencesFromResource(Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceScreen;",
            "Landroidx/preference/PreferenceGroup;",
            "Lcom/sonymobile/settings/preference/util/PreferencesAdder;",
            "Ljava/util/Collection<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 479
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 480
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 482
    instance-of v5, v4, Lcom/sonymobile/settings/preference/IncludePreference;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 484
    move-object v5, v4

    check-cast v5, Lcom/sonymobile/settings/preference/IncludePreference;

    .line 485
    invoke-virtual {v5}, Lcom/sonymobile/settings/preference/IncludePreference;->dependOn()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 486
    invoke-virtual {v5}, Lcom/sonymobile/settings/preference/IncludePreference;->getIncludeResId()I

    move-result v5

    invoke-interface {p2, v5}, Lcom/sonymobile/settings/preference/util/PreferencesAdder;->addPreferencesFromResource(I)V

    .line 488
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 490
    :cond_1
    instance-of v5, v4, Lcom/sonymobile/settings/preference/util/DependOn;

    if-eqz v5, :cond_4

    .line 491
    move-object v5, v4

    check-cast v5, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 492
    invoke-interface {v5}, Lcom/sonymobile/settings/preference/util/DependOn;->dependOn()Z

    move-result v7

    if-nez v7, :cond_2

    .line 493
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 499
    :cond_2
    invoke-static {v5}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->isMoving(Lcom/sonymobile/settings/preference/util/DependOn;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 500
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_3
    invoke-interface {v5}, Lcom/sonymobile/settings/preference/util/DependOn;->hasResumeActions()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 503
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move v6, v2

    :goto_1
    if-nez v6, :cond_5

    .line 508
    instance-of v5, v4, Landroidx/preference/PreferenceGroup;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Landroidx/preference/PreferenceGroup;

    .line 509
    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-lez v6, :cond_5

    .line 511
    invoke-static {p0, v5, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    .line 514
    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-nez v5, :cond_5

    .line 515
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 527
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 528
    move-object v2, p3

    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 529
    instance-of v2, p3, Lcom/sonymobile/settings/preference/MovePreference;

    if-eqz v2, :cond_7

    .line 532
    check-cast p3, Lcom/sonymobile/settings/preference/MovePreference;

    .line 533
    invoke-virtual {p3}, Lcom/sonymobile/settings/preference/MovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object v2

    .line 534
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 536
    invoke-virtual {v2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v3

    if-eq v3, p0, :cond_8

    .line 537
    invoke-virtual {v2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v3

    .line 538
    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 540
    :cond_8
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 542
    :goto_3
    invoke-virtual {p3, v2}, Lcom/sonymobile/settings/preference/MovePreference;->setTargetPreference(Landroidx/preference/Preference;)V

    goto :goto_2

    .line 548
    :cond_9
    invoke-static {p0, v1}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->groupPreferences(Landroidx/preference/PreferenceScreen;Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p2

    .line 552
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    .line 553
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 554
    invoke-static {v1, v2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->sortPreferences(Landroidx/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 559
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/preference/Preference;

    .line 563
    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 565
    instance-of v0, p3, Lcom/sonymobile/settings/preference/RemovePreference;

    if-eqz v0, :cond_b

    .line 568
    check-cast p3, Lcom/sonymobile/settings/preference/RemovePreference;

    .line 569
    invoke-virtual {p3}, Lcom/sonymobile/settings/preference/RemovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-virtual {p3}, Lcom/sonymobile/settings/preference/RemovePreference;->getParentKey()Ljava/lang/String;

    move-result-object p3

    .line 571
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 573
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, p0

    goto :goto_6

    .line 574
    :cond_c
    invoke-virtual {p0, p3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    .line 575
    :goto_6
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 578
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 580
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing targetKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", targetParentKey="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " failed."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SomcPreferences"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    return-void
.end method

.method private static findAfter(Landroidx/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroidx/preference/Preference;
    .locals 2

    .line 273
    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "last"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0

    .line 276
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static findBefore(Landroidx/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroidx/preference/Preference;
    .locals 2

    .line 287
    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    const-string v1, "first"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 288
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0

    .line 290
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getParentOfKey(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Landroidx/preference/PreferenceGroup;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 411
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 412
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 413
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    .line 415
    :cond_1
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    .line 416
    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-static {v3, p1}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentOfKey(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Landroidx/preference/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static groupPreferences(Landroidx/preference/PreferenceScreen;Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceScreen;",
            "Ljava/util/ArrayList<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)",
            "Ljava/util/Map<",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/util/ArrayList<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;>;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 433
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 434
    invoke-interface {v1}, Lcom/sonymobile/settings/preference/util/DependOn;->getParentKey()Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-interface {v1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v3

    .line 436
    invoke-interface {v1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 445
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    goto :goto_1

    .line 446
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 447
    invoke-static {p0, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentOfKey(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Landroidx/preference/PreferenceGroup;

    move-result-object v2

    goto :goto_1

    .line 448
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 449
    invoke-static {p0, v4}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->getParentOfKey(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Landroidx/preference/PreferenceGroup;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    if-nez v2, :cond_3

    move-object v2, p0

    .line 452
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 455
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 456
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_4
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static isMoving(Lcom/sonymobile/settings/preference/util/DependOn;)Z
    .locals 1

    .line 262
    invoke-interface {p0}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/sonymobile/settings/preference/PreferenceGroup;

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

.method private parseMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroidx/preference/Preference;)V
    .locals 2

    .line 182
    :try_start_0
    iget-object p0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 183
    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    const-string p2, "com.sonymobile.settings.preference.TITLE"

    .line 185
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "com.sonyericsson.preference.title"

    .line 187
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 188
    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const-string p2, "com.sonymobile.settings.preference.SUMMARY"

    .line 190
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "com.sonyericsson.preference.summary"

    .line 192
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_3

    .line 193
    :cond_2
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    :cond_3
    instance-of p2, p3, Landroidx/preference/TwoStatePreference;

    if-eqz p2, :cond_5

    .line 196
    move-object p2, p3

    check-cast p2, Landroidx/preference/TwoStatePreference;

    const-string v0, "com.sonymobile.settings.preference.SUMMARY_ON"

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v0, "com.sonymobile.settings.preference.SUMMARY_OFF"

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 206
    :cond_5
    instance-of p2, p3, Lcom/sonymobile/settings/preference/IntentPreference;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "com.sonymobile.settings.preference.ENTRIES"

    if-eqz p2, :cond_6

    .line 207
    :try_start_1
    move-object p2, p3

    check-cast p2, Lcom/sonymobile/settings/preference/IntentPreference;

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 210
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sonymobile/settings/preference/IntentPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 213
    :cond_6
    instance-of p2, p3, Landroidx/preference/ListPreference;

    if-eqz p2, :cond_8

    .line 214
    check-cast p3, Landroidx/preference/ListPreference;

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_7

    .line 217
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_7
    const-string p2, "com.sonymobile.settings.preference.ENTRY_VALUES"

    .line 219
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8

    .line 221
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    return-void
.end method

.method private static reorderPreference(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;I)V
    .locals 3

    .line 306
    instance-of v0, p1, Lcom/sonymobile/settings/preference/MovePreference;

    if-eqz v0, :cond_1

    .line 308
    check-cast p1, Lcom/sonymobile/settings/preference/MovePreference;

    invoke-virtual {p1}, Lcom/sonymobile/settings/preference/MovePreference;->getTargetPreference()Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {p0, v0, p2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;I)V

    goto :goto_1

    .line 313
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/settings/preference/MovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object p0

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Moving targetKey="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SomcPreferences"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 316
    :cond_1
    instance-of v0, p1, Lcom/sonymobile/settings/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 318
    check-cast p1, Landroidx/preference/PreferenceGroup;

    .line 319
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 321
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 322
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, p2, -0x1

    .line 323
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 324
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 326
    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->setOrder(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 330
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static sortPreferences(Landroidx/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/util/ArrayList<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->isOrderingAsAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 355
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 356
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    .line 358
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v1

    .line 359
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOrder(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 369
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/settings/preference/util/DependOn;

    add-int/2addr v0, v2

    .line 371
    move-object v5, v4

    check-cast v5, Landroidx/preference/Preference;

    .line 372
    invoke-static {p0, v4}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->findAfter(Landroidx/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroidx/preference/Preference;

    move-result-object v6

    .line 373
    invoke-static {p0, v4}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->findBefore(Landroidx/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v6, :cond_2

    .line 375
    invoke-virtual {v6}, Landroidx/preference/Preference;->getOrder()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {p0, v5, v4}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;I)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 379
    invoke-virtual {v4}, Landroidx/preference/Preference;->getOrder()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 380
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v4, v6

    add-int/2addr v4, v0

    sub-int/2addr v4, v2

    invoke-static {p0, v5, v4}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;I)V

    goto :goto_1

    .line 382
    :cond_3
    instance-of v4, v5, Lcom/sonymobile/settings/preference/PreferenceGroup;

    if-eqz v4, :cond_4

    .line 384
    invoke-virtual {v5}, Landroidx/preference/Preference;->getOrder()I

    move-result v4

    invoke-static {p0, v5, v4}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;I)V

    goto :goto_1

    .line 387
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 388
    invoke-virtual {v4}, Landroidx/preference/Preference;->getOrder()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {p0, v5, v4}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;I)V

    goto :goto_1

    .line 397
    :cond_5
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public dependOn(Landroid/content/Context;Landroidx/preference/Preference;Landroid/content/Intent;)Z
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 130
    iget-boolean v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 134
    iget-boolean v3, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v3, :cond_2

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    iget-boolean v3, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v3, :cond_4

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 141
    iget-boolean v3, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v3, :cond_6

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 143
    :cond_7
    iget-boolean v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsOwnerOnly:Z

    if-eqz v0, :cond_9

    .line 144
    iget-boolean v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v0, :cond_8

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 147
    :cond_9
    iget-boolean v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsValidIntent:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    if-eqz v0, :cond_11

    :cond_a
    if-nez p3, :cond_b

    return v2

    .line 153
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x80

    .line 154
    invoke-virtual {p1, p3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 155
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 156
    :cond_c
    invoke-virtual {p1, p3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    :cond_d
    if-eqz v3, :cond_10

    .line 158
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_e

    goto :goto_6

    .line 163
    :cond_e
    iget-boolean p3, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    if-eqz p3, :cond_11

    .line 164
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    if-eq p3, v1, :cond_f

    .line 165
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has more than one intent for metadata in:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SomcPreferences"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 173
    :cond_f
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 174
    invoke-direct {p0, p1, p3, p2}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->parseMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroidx/preference/Preference;)V

    goto :goto_7

    .line 159
    :cond_10
    :goto_6
    iput-boolean v2, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 177
    :cond_11
    :goto_7
    iget-boolean p0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    return p0
.end method

.method public getAfter()Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAfter:Ljava/lang/String;

    return-object p0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mBefore:Ljava/lang/String;

    return-object p0
.end method

.method public getParentKey()Ljava/lang/String;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mParent:Ljava/lang/String;

    return-object p0
.end method
