.class public Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;
.super Ljava/lang/Object;
.source "ForegroundChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mActivity:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->getForegroundActivityName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mActivity:Ljava/lang/String;

    return-void
.end method

.method private getForegroundActivityName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object p0, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 46
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->getForegroundActivityName()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mActivity:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object p0, p0, Lcom/sonymobile/systemui/qs/tiles/ForegroundChecker;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method
