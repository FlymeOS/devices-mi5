.class Lcom/miui/internal/component/module/ModuleLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/component/module/ModuleLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public ds:Lmiui/module/Module;

.field public dt:Ljava/lang/String;

.field public du:Ljava/lang/String;

.field public dv:Ljava/lang/String;

.field public dw:Z


# direct methods
.method public constructor <init>(Lmiui/module/Module;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleLoader$a;->ds:Lmiui/module/Module;

    .line 39
    iput-object p2, p0, Lcom/miui/internal/component/module/ModuleLoader$a;->dt:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/miui/internal/component/module/ModuleLoader$a;->du:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/miui/internal/component/module/ModuleLoader$a;->dv:Ljava/lang/String;

    .line 42
    iput-boolean p5, p0, Lcom/miui/internal/component/module/ModuleLoader$a;->dw:Z

    .line 43
    return-void
.end method
