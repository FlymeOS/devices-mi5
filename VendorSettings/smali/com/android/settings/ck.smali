.class Lcom/android/vendorsettings/ck;
.super Ljava/lang/Object;
.source "DeviceAdminAddFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic lg:Lcom/android/vendorsettings/DeviceAdminAddFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DeviceAdminAddFragment;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/vendorsettings/ck;->lg:Lcom/android/vendorsettings/DeviceAdminAddFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/vendorsettings/ck;->lg:Lcom/android/vendorsettings/DeviceAdminAddFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->finish()V

    .line 207
    return-void
.end method
