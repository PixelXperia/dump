.class public Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;
.super Lcom/sonymobile/runtimeskinning/SkinnedResources;
.source "LocallySkinnedResources.java"


# instance fields
.field private final mIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOriginalResources:Landroid/content/res/Resources;

.field private final mResources:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/res/Resources;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Resources;",
            ">;>;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lcom/sonymobile/runtimeskinning/SkinnedResources;-><init>(Landroid/content/res/Resources;)V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mResources:Ljava/util/HashSet;

    .line 87
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    .line 88
    iput-object p2, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p2}, Lcom/sonymobile/runtimeskinning/SkinnedResources;-><init>(Landroid/content/res/Resources;)V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mResources:Ljava/util/HashSet;

    .line 72
    iput-object p2, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    .line 73
    iget-object p2, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mResources:Ljava/util/HashSet;

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->createIdMap(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/HashSet;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    return-void
.end method

.method private createIdMap(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/HashSet;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Landroid/content/res/Resources;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 109
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    iget-object v3, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    .line 116
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 117
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/res/Resources;

    .line 118
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v2, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    invoke-virtual {p4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 568
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 571
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 575
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 520
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 523
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 527
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getColor(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 453
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 456
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 460
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getColor(ILandroid/content/res/Resources$Theme;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 469
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 472
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 476
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 486
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 489
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 493
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 504
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 507
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 511
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 723
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getDimension(I)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 305
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 308
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 312
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public getDimensionPixelOffset(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 321
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 324
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 328
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public getDimensionPixelSize(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 337
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 340
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 344
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 0

    .line 714
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 370
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 373
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 377
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 387
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 390
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 394
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 404
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 407
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 411
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 421
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 424
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 428
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFraction(III)F
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 353
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 356
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 360
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    return p0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIntArray(I)[I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 281
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getInteger(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 536
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 539
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 543
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 552
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 555
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 559
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 437
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 440
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 444
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object p0

    return-object p0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 231
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 238
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 215
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 222
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 164
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 171
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 769
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 742
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 751
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 760
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 181
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 188
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 198
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 205
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 272
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 148
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 155
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 247
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 254
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 263
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 648
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 653
    :catchall_0
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    return-void
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "string"

    const/4 v1, 0x0

    .line 683
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 684
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->getValue(ILandroid/util/TypedValue;Z)V

    return-void
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 663
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 669
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 674
    :catchall_0
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    return-void
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 584
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 587
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 591
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 292
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 296
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 600
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 603
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 607
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/sonymobile/runtimeskinning/ResolverUtil;->resolveReference(Landroid/content/res/Resources;Ljava/util/Map;I)I

    move-result p1

    .line 616
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 619
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 623
    :catchall_0
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 632
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 789
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    return-void
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mResources:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    .line 702
    invoke-virtual {v1, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 705
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/runtimeskinning/LocallySkinnedResources;->mOriginalResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method
