.class Lcom/miui/internal/app/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field cM:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field cN:Landroid/app/Fragment;

.field cO:Landroid/os/Bundle;

.field cP:Landroid/app/ActionBar$Tab;

.field cQ:Z

.field final synthetic cR:Lcom/miui/internal/app/b;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/b;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/app/ActionBar$Tab;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 245
    iput-object p1, p0, Lcom/miui/internal/app/b$a;->cR:Lcom/miui/internal/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p2, p0, Lcom/miui/internal/app/b$a;->tag:Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcom/miui/internal/app/b$a;->cM:Ljava/lang/Class;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/app/b$a;->cN:Landroid/app/Fragment;

    .line 249
    iput-object p4, p0, Lcom/miui/internal/app/b$a;->cO:Landroid/os/Bundle;

    .line 250
    iput-object p5, p0, Lcom/miui/internal/app/b$a;->cP:Landroid/app/ActionBar$Tab;

    .line 251
    iput-boolean p6, p0, Lcom/miui/internal/app/b$a;->cQ:Z

    .line 252
    return-void
.end method
