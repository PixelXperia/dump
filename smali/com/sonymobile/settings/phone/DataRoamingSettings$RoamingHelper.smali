.class Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamingHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;
    }
.end annotation


# instance fields
.field private final FALSE:Ljava/lang/String;

.field private final TRUE:Ljava/lang/String;

.field private final mAuthority:Ljava/lang/String;

.field private final mBaseUri:Landroid/net/Uri;

.field public final mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

.field final synthetic this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 1

    .line 478
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "content://com.sonymobile.phone.roaming"

    .line 487
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    .line 488
    iget-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mAuthority:Ljava/lang/String;

    const/4 p1, 0x1

    .line 491
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->TRUE:Ljava/lang/String;

    const/4 p1, 0x0

    .line 492
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->FALSE:Ljava/lang/String;

    .line 496
    new-instance p1, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;Lcom/sonymobile/settings/phone/DataRoamingSettings$1;)V
    .locals 0

    .line 478
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I
    .locals 0

    .line 478
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->query(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;II)I
    .locals 0

    .line 478
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->update(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Landroid/net/Uri;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->TRUE:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->FALSE:Ljava/lang/String;

    return-object p0
.end method

.method private query(Ljava/lang/String;II)I
    .locals 7

    .line 500
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/subId/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 p1, 0x0

    .line 504
    :try_start_0
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$1500(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 505
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 506
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p3, p0

    :cond_0
    if-eqz p1, :cond_1

    .line 512
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "DataRoamingSettings.RoamingHelper"

    const-string v0, "queryInt:"

    .line 510
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p3

    :goto_2
    if-eqz p1, :cond_2

    .line 512
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method private update(Ljava/lang/String;II)I
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 522
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 523
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$1600(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, v0, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
