.class Lcom/android/settings/cK;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic mi:Landroid/view/View;

.field final synthetic mj:Lcom/android/settings/cH;


# direct methods
.method constructor <init>(Lcom/android/settings/cH;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/settings/cK;->mj:Lcom/android/settings/cH;

    iput-object p2, p0, Lcom/android/settings/cK;->mi:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 349
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 350
    iget-object v1, p0, Lcom/android/settings/cK;->mj:Lcom/android/settings/cH;

    iget-object v0, p0, Lcom/android/settings/cK;->mi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cB;

    invoke-static {v1, v0}, Lcom/android/settings/cH;->a(Lcom/android/settings/cH;Lcom/android/settings/cB;)V

    .line 351
    return-void
.end method
