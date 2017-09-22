.class Lcom/android/settings/gW;
.super Ljava/lang/Object;
.source "ResetNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic yj:Lcom/android/settings/ResetNetwork;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetwork;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/gW;->yj:Lcom/android/settings/ResetNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/gW;->yj:Lcom/android/settings/ResetNetwork;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings/ResetNetwork;->a(Lcom/android/settings/ResetNetwork;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/gW;->yj:Lcom/android/settings/ResetNetwork;

    invoke-static {v0}, Lcom/android/settings/ResetNetwork;->a(Lcom/android/settings/ResetNetwork;)V

    .line 126
    :cond_0
    return-void
.end method
