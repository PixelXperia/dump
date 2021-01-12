.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$LegacyRecentsImpl$PEWxOvtbk_wgSc2hdB0_I8K7cyg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/events/component/HidePipMenuEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$LegacyRecentsImpl$PEWxOvtbk_wgSc2hdB0_I8K7cyg;->f$0:Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/-$$Lambda$LegacyRecentsImpl$PEWxOvtbk_wgSc2hdB0_I8K7cyg;->f$0:Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    invoke-static {p0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->lambda$onBusEvent$1(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V

    return-void
.end method
