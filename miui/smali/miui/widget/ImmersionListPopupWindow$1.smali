.class Lmiui/widget/ImmersionListPopupWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic RR:Lmiui/widget/ImmersionListPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/ImmersionListPopupWindow;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$1;->RR:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->RR:Lmiui/widget/ImmersionListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ImmersionListPopupWindow;->dismiss()V

    .line 77
    return-void
.end method
