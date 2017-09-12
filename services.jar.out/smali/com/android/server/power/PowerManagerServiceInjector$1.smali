.class final Lcom/android/server/power/PowerManagerServiceInjector$1;
.super Ljava/lang/Object;
.source "PowerManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerServiceInjector;->init(Lcom/android/server/power/PowerManagerService;Ljava/util/ArrayList;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/android/server/UidStateHelper;->get()Lcom/android/server/UidStateHelper;

    move-result-object v0

    # setter for: Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateHelper:Lcom/android/server/UidStateHelper;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceInjector;->access$002(Lcom/android/server/UidStateHelper;)Lcom/android/server/UidStateHelper;

    .line 42
    # getter for: Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateHelper:Lcom/android/server/UidStateHelper;
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceInjector;->access$000()Lcom/android/server/UidStateHelper;

    move-result-object v0

    # getter for: Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceInjector;->access$100()Lcom/android/internal/app/IUidStateChangeCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/UidStateHelper;->registerUidStateObserver(Lcom/android/internal/app/IUidStateChangeCallback;)V

    .line 45
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    # setter for: Lcom/android/server/power/PowerManagerServiceInjector;->sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerServiceInjector;->access$202(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy;

    .line 46
    return-void
.end method
