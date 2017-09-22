.class Lmiui/hybrid/HybridView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/HybridView;->ca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yn:Lmiui/hybrid/HybridView;


# direct methods
.method constructor <init>(Lmiui/hybrid/HybridView;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lmiui/hybrid/HybridView$1;->yn:Lmiui/hybrid/HybridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lmiui/hybrid/HybridView$1;->yn:Lmiui/hybrid/HybridView;

    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->reload()V

    .line 222
    iget-object v0, p0, Lmiui/hybrid/HybridView$1;->yn:Lmiui/hybrid/HybridView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lmiui/hybrid/HybridView;->a(Lmiui/hybrid/HybridView;I)V

    .line 223
    return-void
.end method
