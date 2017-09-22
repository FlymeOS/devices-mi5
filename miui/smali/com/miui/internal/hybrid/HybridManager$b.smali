.class Lcom/miui/internal/hybrid/HybridManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/hybrid/HybridManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic eQ:Lcom/miui/internal/hybrid/HybridManager;

.field private eT:Ljava/lang/String;

.field private mResponse:Lmiui/hybrid/Response;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager$b;->eQ:Lcom/miui/internal/hybrid/HybridManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager$b;->mResponse:Lmiui/hybrid/Response;

    .line 266
    iput-object p3, p0, Lcom/miui/internal/hybrid/HybridManager$b;->eT:Ljava/lang/String;

    .line 267
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$b;->eQ:Lcom/miui/internal/hybrid/HybridManager;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager$b;->mResponse:Lmiui/hybrid/Response;

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager$b;->eT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager$b;->eQ:Lcom/miui/internal/hybrid/HybridManager;

    invoke-static {v1}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/HybridManager;)Lmiui/hybrid/HybridView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/hybrid/HybridView;->loadUrl(Ljava/lang/String;)V

    .line 274
    return-void
.end method
