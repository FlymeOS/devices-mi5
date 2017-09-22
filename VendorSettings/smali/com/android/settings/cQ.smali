.class Lcom/android/settings/cQ;
.super Ljava/lang/Object;
.source "EdgeModeGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic mv:Lcom/android/settings/EdgeModeGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/EdgeModeGuideActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/cQ;->mv:Lcom/android/settings/EdgeModeGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/cQ;->mv:Lcom/android/settings/EdgeModeGuideActivity;

    invoke-virtual {v0}, Lcom/android/settings/EdgeModeGuideActivity;->finish()V

    .line 76
    return-void
.end method
