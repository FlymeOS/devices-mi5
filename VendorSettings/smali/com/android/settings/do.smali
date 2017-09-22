.class final Lcom/android/vendorsettings/do;
.super Ljava/lang/Object;
.source "HelpUtils.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic nJ:Landroid/content/Intent;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/vendorsettings/do;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/vendorsettings/do;->nJ:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/vendorsettings/do;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/vendorsettings/do;->nJ:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method
