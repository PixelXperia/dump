.class public final Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController_Factory;
.super Ljava/lang/Object;
.source "LockscreenLoopsController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController_Factory;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController_Factory;->get()Lcom/sonymobile/systemui/lockscreen/LockscreenLoopsController;

    move-result-object p0

    return-object p0
.end method
