.class Lcom/google/common/base/CharMatcher$13;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endInclusive:C

.field final synthetic val$startInclusive:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    .line 559
    iput-char p2, p0, Lcom/google/common/base/CharMatcher$13;->val$startInclusive:C

    iput-char p3, p0, Lcom/google/common/base/CharMatcher$13;->val$endInclusive:C

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1

    .line 561
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$13;->val$startInclusive:C

    if-gt v0, p1, :cond_0

    iget-char p0, p0, Lcom/google/common/base/CharMatcher$13;->val$endInclusive:C

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
