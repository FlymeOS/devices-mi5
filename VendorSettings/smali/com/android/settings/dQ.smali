.class Lcom/android/settings/dQ;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic pL:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/dQ;->pL:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/dQ;->pL:Lcom/android/settings/MasterClear;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings/MasterClear;->a(Lcom/android/settings/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/dQ;->pL:Lcom/android/settings/MasterClear;

    invoke-static {v0}, Lcom/android/settings/MasterClear;->a(Lcom/android/settings/MasterClear;)V

    .line 117
    :cond_0
    return-void
.end method
