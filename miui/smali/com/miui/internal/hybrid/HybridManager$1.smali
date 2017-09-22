.class Lcom/miui/internal/hybrid/HybridManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/hybrid/HybridManager;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eQ:Lcom/miui/internal/hybrid/HybridManager;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/HybridManager;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager$1;->eQ:Lcom/miui/internal/hybrid/HybridManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$1;->eQ:Lcom/miui/internal/hybrid/HybridManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/HybridManager;Z)Z

    .line 135
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$1;->eQ:Lcom/miui/internal/hybrid/HybridManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/HybridManager;Z)Z

    .line 140
    return-void
.end method
