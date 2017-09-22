.class Lcom/android/settings/aK;
.super Ljava/lang/Object;
.source "ConfirmAccessControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fc:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/aK;->fc:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/android/settings/aK;->fc:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method
