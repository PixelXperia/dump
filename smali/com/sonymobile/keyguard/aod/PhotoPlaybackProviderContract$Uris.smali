.class public Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderContract$Uris;
.super Ljava/lang/Object;
.source "PhotoPlaybackProviderContract.java"


# static fields
.field public static final PHOTO:Landroid/net/Uri;

.field public static final STATUS:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sonymobile.recallplaybackphotos.photoprovider/photo_table"

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderContract$Uris;->PHOTO:Landroid/net/Uri;

    const-string v0, "content://com.sonymobile.recallplaybackphotos.photoprovider/status"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/keyguard/aod/PhotoPlaybackProviderContract$Uris;->STATUS:Landroid/net/Uri;

    return-void
.end method
