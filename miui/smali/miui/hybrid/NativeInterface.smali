.class public Lmiui/hybrid/NativeInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fh:Lcom/miui/internal/hybrid/HybridManager;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/HybridManager;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lmiui/hybrid/NativeInterface;->fh:Lcom/miui/internal/hybrid/HybridManager;

    .line 25
    return-void
.end method


# virtual methods
.method public addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/hybrid/NativeInterface;->fh:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/HybridManager;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 43
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmiui/hybrid/NativeInterface;->fh:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmiui/hybrid/NativeInterface;->fh:Lcom/miui/internal/hybrid/HybridManager;

    invoke-virtual {v0, p1}, Lcom/miui/internal/hybrid/HybridManager;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 52
    return-void
.end method
