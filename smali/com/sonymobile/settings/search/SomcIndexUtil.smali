.class public Lcom/sonymobile/settings/search/SomcIndexUtil;
.super Ljava/lang/Object;
.source "SomcIndexUtil.java"


# direct methods
.method private static filterSomcRemovedPreference(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 185
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lcom/sonymobile/settings/search/SearchPreferenceManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/search/SearchPreferenceManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, p0, p1, v1}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p0

    .line 190
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 191
    instance-of p1, p0, Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    .line 192
    check-cast p0, Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x0

    .line 193
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p2

    .line 195
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getAllSomcPreferencesFrom(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 211
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 212
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 214
    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-static {v3}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getAllSomcPreferencesFrom(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-object v0
.end method

.method private static getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 2

    .line 428
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 429
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 432
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 433
    iget v0, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 436
    :cond_0
    iget-object p0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object p0, p3

    .line 439
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p0, :cond_2

    .line 440
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_2
    return-object p3
.end method

.method private static getDataIcon(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 1

    .line 414
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 416
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 417
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private static getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .line 404
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .line 410
    sget-object v0, Lcom/android/settings/R$styleable;->Preference:[I

    const/16 v1, 0x1c

    invoke-static {p0, p1, v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIconResId(Landroid/content/Context;ILjava/lang/String;)I
    .locals 7

    const-string v0, "Error parsing PreferenceScreen"

    const/4 v1, 0x0

    .line 362
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 364
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "PreferenceScreen"

    .line 370
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 376
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result p1

    .line 377
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 379
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    if-eq v4, v2, :cond_4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 380
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, p1, :cond_4

    :cond_2
    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 385
    :cond_3
    invoke-static {p0, v3}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 386
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    invoke-static {p0, v3}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getDataIcon(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 397
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    return p0

    .line 371
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 395
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 393
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v1, :cond_7

    .line 397
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw p0
.end method

.method private static getIncludeResource(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2

    .line 422
    sget-object v0, Lcom/android/settings/R$styleable;->IncludePreference:[I

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const/16 v0, 0x2f

    .line 246
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2e

    .line 247
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    .line 249
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getScreenTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const-string v0, "Error parsing PreferenceScreen"

    const/4 v1, 0x0

    .line 326
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 328
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PreferenceScreen"

    .line 334
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    .line 341
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 343
    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v3, 0x4

    invoke-static {p0, p1, v2, v3}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 351
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    return-object p0

    .line 335
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 349
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 347
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    .line 351
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw p0
.end method

.method public static getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "Error parsing PreferenceScreen"

    const/4 v1, 0x0

    .line 270
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 273
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PreferenceScreen"

    .line 279
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 285
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 286
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 288
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 289
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_5

    :cond_2
    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    goto :goto_1

    .line 294
    :cond_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 297
    invoke-static {p0, v4}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 298
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    invoke-static {p0, v4}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 302
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 303
    invoke-virtual {v5, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    invoke-static {p0, v4}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getIncludeResource(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 315
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    return-object v1

    .line 280
    :cond_7
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v1, p1

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, p1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object p1, v1

    goto :goto_5

    :catch_2
    move-exception p0

    .line 313
    :goto_3
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 311
    :goto_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    if-eqz p1, :cond_8

    .line 315
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    throw p0
.end method

.method public static handleIncludePreferencesIfNecessary(Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "IncludePreference"

    .line 231
    invoke-static {p0, p1, v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {v0}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/sonymobile/settings/search/SomcIndexUtil;->indexFromSomcPreference(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static handleIncludePreferencesIfNecessaryForSlice(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "IncludePreference"

    .line 451
    invoke-static {p0, p1, v0, v1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {v0}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/sonymobile/settings/search/SomcIndexUtil;->indexFromSomcPreferenceForSlice(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static indexFromSomcPreference(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "xml"

    const-string v5, "com.android.settings"

    move-object/from16 v6, p2

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 72
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_0

    .line 73
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 76
    :cond_0
    new-instance v4, Lcom/sonymobile/settings/search/SearchPreferenceManager;

    invoke-direct {v4, v0}, Lcom/sonymobile/settings/search/SearchPreferenceManager;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 78
    invoke-virtual {v4, v0, v3, v5}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v4

    .line 79
    invoke-static {v4}, Lcom/sonymobile/settings/search/SomcIndexUtil;->resolveSomcPreferenceScreen(Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    .line 82
    invoke-static/range {p0 .. p1}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getScreenTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_11

    .line 85
    invoke-virtual {v4, v9}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v10

    .line 88
    instance-of v11, v10, Landroidx/preference/PreferenceCategory;

    const/4 v12, 0x1

    if-eqz v11, :cond_3

    .line 89
    move-object v11, v10

    check-cast v11, Landroidx/preference/PreferenceCategory;

    move v14, v12

    const/4 v13, 0x0

    .line 90
    :goto_1
    invoke-virtual {v11}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v15

    if-ge v13, v15, :cond_2

    .line 91
    invoke-virtual {v11, v13}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v15

    .line 92
    instance-of v8, v15, Lcom/sonymobile/settings/preference/util/DependOn;

    if-eqz v8, :cond_1

    .line 93
    check-cast v15, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 94
    invoke-interface {v15}, Lcom/sonymobile/settings/preference/util/DependOn;->dependOn()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v14, 0x0

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    move v12, v14

    :cond_3
    if-nez v12, :cond_5

    :cond_4
    :goto_2
    move/from16 v11, p1

    goto/16 :goto_6

    .line 108
    :cond_5
    instance-of v8, v10, Lcom/sonymobile/settings/preference/MovePreference;

    if-eqz v8, :cond_6

    goto :goto_2

    .line 113
    :cond_6
    instance-of v8, v10, Lcom/sonymobile/settings/preference/util/DependOn;

    if-eqz v8, :cond_e

    .line 115
    move-object v8, v10

    check-cast v8, Lcom/sonymobile/settings/preference/util/DependOn;

    invoke-interface {v8}, Lcom/sonymobile/settings/preference/util/DependOn;->dependOn()Z

    move-result v8

    if-eqz v8, :cond_c

    if-nez v1, :cond_7

    goto :goto_2

    .line 119
    :cond_7
    invoke-virtual {v10}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v3, v8, v5}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 122
    invoke-virtual {v10}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 123
    invoke-virtual {v10}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_8
    move-object v11, v5

    .line 125
    :goto_3
    instance-of v12, v10, Lcom/sonymobile/settings/preference/CheckBoxPreference;

    if-eqz v12, :cond_9

    .line 126
    move-object v12, v10

    check-cast v12, Lcom/sonymobile/settings/preference/CheckBoxPreference;

    .line 127
    invoke-virtual {v12}, Landroidx/preference/TwoStatePreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v13

    .line 128
    invoke-virtual {v12}, Landroidx/preference/TwoStatePreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v12

    .line 129
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 130
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 131
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_9
    move-object v12, v5

    .line 134
    :goto_4
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v10}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    if-nez v14, :cond_a

    move-object v14, v5

    goto :goto_5

    .line 136
    :cond_a
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_5
    iput-object v14, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 137
    iput-object v11, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 138
    iput-object v12, v13, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 139
    iput-object v8, v13, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 140
    iput-object v6, v13, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 141
    invoke-virtual {v10}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v13, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 142
    invoke-virtual {v10}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 143
    invoke-virtual {v10}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v3, v8}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getIconResId(Landroid/content/Context;ILjava/lang/String;)I

    move-result v8

    iput v8, v13, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 145
    :cond_b
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 146
    :cond_c
    instance-of v8, v10, Lcom/sonymobile/settings/preference/RemovePreference;

    if-eqz v8, :cond_4

    if-nez v2, :cond_d

    goto/16 :goto_2

    .line 151
    :cond_d
    check-cast v10, Lcom/sonymobile/settings/preference/RemovePreference;

    .line 152
    invoke-virtual {v10}, Lcom/sonymobile/settings/preference/RemovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    move/from16 v11, p1

    .line 154
    invoke-static {v0, v11, v8, v2}, Lcom/sonymobile/settings/search/SomcIndexUtil;->filterSomcRemovedPreference(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_6

    :cond_e
    move/from16 v11, p1

    if-nez v1, :cond_f

    goto :goto_6

    .line 161
    :cond_f
    invoke-virtual {v10}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v3, v8, v5}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-virtual {v10}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 163
    invoke-virtual {v10}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    .line 164
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 165
    new-instance v13, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v13, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v13, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 167
    iput-object v8, v13, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 168
    iput-object v12, v13, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 169
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public static indexFromSomcPreferenceForSlice(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "xml"

    const-string v2, "com.android.settings"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 473
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 474
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 477
    :cond_0
    new-instance v0, Lcom/sonymobile/settings/search/SearchPreferenceManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/search/SearchPreferenceManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 479
    invoke-virtual {v0, p0, p2, v1}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 480
    invoke-static {p2}, Lcom/sonymobile/settings/search/SomcIndexUtil;->resolveSomcPreferenceScreen(Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x0

    .line 483
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 484
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 486
    instance-of v3, v2, Lcom/sonymobile/settings/preference/RemovePreference;

    if-eqz v3, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    .line 491
    :cond_1
    check-cast v2, Lcom/sonymobile/settings/preference/RemovePreference;

    .line 492
    invoke-virtual {v2}, Lcom/sonymobile/settings/preference/RemovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 494
    invoke-static {p0, p1, v2, p3}, Lcom/sonymobile/settings/search/SomcIndexUtil;->filterSomcRemovedPreference(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static resolveSomcPreferenceScreen(Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .locals 2

    .line 201
    invoke-static {p0}, Lcom/sonymobile/settings/search/SomcIndexUtil;->getAllSomcPreferencesFrom(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 203
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method
