.class public Lcom/sonymobile/systemui/gameservice/GameService;
.super Landroid/app/Service;
.source "GameService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/gameservice/GameService$MyGestureListener;,
        Lcom/sonymobile/systemui/gameservice/GameService$MyGestureDetector;,
        Lcom/sonymobile/systemui/gameservice/GameService$ClientList;,
        Lcom/sonymobile/systemui/gameservice/GameService$Client;
    }
.end annotation


# instance fields
.field private final mBinder:Lcom/sonymobile/systemui/gameservice/IGameService$Stub;

.field private final mGameClients:Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

.field private mHandler:Landroid/os/Handler;

.field private final mLockClients:Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

.field private mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 114
    new-instance v0, Lcom/sonymobile/systemui/gameservice/GameService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/gameservice/GameService$1;-><init>(Lcom/sonymobile/systemui/gameservice/GameService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mLockClients:Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    .line 121
    new-instance v0, Lcom/sonymobile/systemui/gameservice/GameService$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/gameservice/GameService$2;-><init>(Lcom/sonymobile/systemui/gameservice/GameService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mGameClients:Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    .line 212
    new-instance v0, Lcom/sonymobile/systemui/gameservice/GameService$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/gameservice/GameService$3;-><init>(Lcom/sonymobile/systemui/gameservice/GameService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mBinder:Lcom/sonymobile/systemui/gameservice/IGameService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/gameservice/GameService;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonymobile/systemui/gameservice/GameService;)Lcom/sonymobile/systemui/gameservice/GameService$ClientList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mLockClients:Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/gameservice/GameService;I)Lcom/android/systemui/statusbar/phone/NavigationBarLockController;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/gameservice/GameService;->getLockController(I)Lcom/android/systemui/statusbar/phone/NavigationBarLockController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonymobile/systemui/gameservice/GameService;I)Lcom/android/systemui/statusbar/phone/GameButton;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/gameservice/GameService;->getGameButton(I)Lcom/android/systemui/statusbar/phone/GameButton;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonymobile/systemui/gameservice/GameService;)Lcom/sonymobile/systemui/gameservice/GameService$ClientList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mGameClients:Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    return-object p0
.end method

.method private getGameButton(I)Lcom/android/systemui/statusbar/phone/GameButton;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getGameButton()Lcom/android/systemui/statusbar/phone/GameButton;

    move-result-object p0

    return-object p0
.end method

.method private getLockController(I)Lcom/android/systemui/statusbar/phone/NavigationBarLockController;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLockController()Lcom/android/systemui/statusbar/phone/NavigationBarLockController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mBinder:Lcom/sonymobile/systemui/gameservice/IGameService$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 189
    const-class v0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarController;

    iput-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mLockClients:Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->clear()V

    .line 196
    iget-object p0, p0, Lcom/sonymobile/systemui/gameservice/GameService;->mGameClients:Lcom/sonymobile/systemui/gameservice/GameService$ClientList;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/gameservice/GameService$ClientList;->clear()V

    return-void
.end method
