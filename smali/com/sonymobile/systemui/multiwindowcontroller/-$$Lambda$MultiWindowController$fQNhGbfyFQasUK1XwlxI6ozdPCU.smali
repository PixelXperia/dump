.class public final synthetic Lcom/sonymobile/systemui/multiwindowcontroller/-$$Lambda$MultiWindowController$fQNhGbfyFQasUK1XwlxI6ozdPCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/multiwindowcontroller/-$$Lambda$MultiWindowController$fQNhGbfyFQasUK1XwlxI6ozdPCU;->f$0:Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;

    iput-object p2, p0, Lcom/sonymobile/systemui/multiwindowcontroller/-$$Lambda$MultiWindowController$fQNhGbfyFQasUK1XwlxI6ozdPCU;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/systemui/multiwindowcontroller/-$$Lambda$MultiWindowController$fQNhGbfyFQasUK1XwlxI6ozdPCU;->f$0:Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;

    iget-object p0, p0, Lcom/sonymobile/systemui/multiwindowcontroller/-$$Lambda$MultiWindowController$fQNhGbfyFQasUK1XwlxI6ozdPCU;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->lambda$showToast$1$MultiWindowController(Ljava/lang/String;)V

    return-void
.end method
