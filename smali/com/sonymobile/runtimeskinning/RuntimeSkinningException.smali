.class public Lcom/sonymobile/runtimeskinning/RuntimeSkinningException;
.super Ljava/lang/Exception;
.source "RuntimeSkinningException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
