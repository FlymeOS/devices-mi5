.class Lcom/android/settings/notification/ZenRuleNameDialog$1;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic alT:Lcom/android/settings/notification/ZenRuleNameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleNameDialog;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleNameDialog;->a(Lcom/android/settings/notification/ZenRuleNameDialog;)Lcom/android/settings/notification/ServiceListing;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleNameDialog;->a(Lcom/android/settings/notification/ZenRuleNameDialog;)Lcom/android/settings/notification/ServiceListing;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->b(Lcom/android/settings/notification/ZenRuleNameDialog;)Lcom/android/settings/notification/ServiceListing$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->b(Lcom/android/settings/notification/ServiceListing$Callback;)V

    .line 108
    :cond_0
    return-void
.end method
