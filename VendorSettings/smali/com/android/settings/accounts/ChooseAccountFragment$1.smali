.class Lcom/android/settings/accounts/ChooseAccountFragment$1;
.super Ljava/lang/Object;
.source "ChooseAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic EB:Lcom/android/settings/accounts/ChooseAccountFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ChooseAccountFragment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->EB:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->EB:Lcom/android/settings/accounts/ChooseAccountFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/accounts/ChooseAccountFragment;->a(Lcom/android/settings/accounts/ChooseAccountFragment;ILjava/lang/String;)V

    .line 98
    return-void
.end method
