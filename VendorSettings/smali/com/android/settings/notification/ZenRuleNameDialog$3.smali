.class Lcom/android/settings/notification/ZenRuleNameDialog$3;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic alT:Lcom/android/settings/notification/ZenRuleNameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleNameDialog;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$3;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog$3;->alT:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleNameDialog;->g(Lcom/android/settings/notification/ZenRuleNameDialog;)V

    .line 126
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
