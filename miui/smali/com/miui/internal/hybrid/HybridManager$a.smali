.class Lcom/miui/internal/hybrid/HybridManager$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic eQ:Lcom/miui/internal/hybrid/HybridManager;

.field private eR:Lmiui/hybrid/HybridFeature;

.field private eS:Lmiui/hybrid/Request;

.field private eT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/HybridFeature;Lmiui/hybrid/Request;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager$a;->eQ:Lcom/miui/internal/hybrid/HybridManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager$a;->eR:Lmiui/hybrid/HybridFeature;

    .line 236
    iput-object p3, p0, Lcom/miui/internal/hybrid/HybridManager$a;->eS:Lmiui/hybrid/Request;

    .line 237
    iput-object p4, p0, Lcom/miui/internal/hybrid/HybridManager$a;->eT:Ljava/lang/String;

    .line 238
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$a;->eR:Lmiui/hybrid/HybridFeature;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager$a;->eS:Lmiui/hybrid/Request;

    invoke-interface {v0, v1}, Lmiui/hybrid/HybridFeature;->invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager$a;->eR:Lmiui/hybrid/HybridFeature;

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager$a;->eS:Lmiui/hybrid/Request;

    invoke-interface {v1, v2}, Lmiui/hybrid/HybridFeature;->getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;

    move-result-object v1

    sget-object v2, Lmiui/hybrid/HybridFeature$Mode;->ASYNC:Lmiui/hybrid/HybridFeature$Mode;

    if-ne v1, v2, :cond_0

    .line 244
    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager$a;->eQ:Lcom/miui/internal/hybrid/HybridManager;

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager$a;->eS:Lmiui/hybrid/Request;

    invoke-virtual {v2}, Lmiui/hybrid/Request;->getPageContext()Lmiui/hybrid/PageContext;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/hybrid/HybridManager$a;->eT:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    .line 246
    :cond_0
    return-void
.end method
