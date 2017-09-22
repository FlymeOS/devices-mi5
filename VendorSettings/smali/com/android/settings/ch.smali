.class Lcom/android/vendorsettings/ch;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic lc:Lcom/android/vendorsettings/cg;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/cg;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/vendorsettings/ch;->lc:Lcom/android/vendorsettings/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/vendorsettings/ch;->lc:Lcom/android/vendorsettings/cg;

    iget-object v0, v0, Lcom/android/vendorsettings/cg;->lb:Lcom/android/vendorsettings/DeviceAdminAdd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/DeviceAdminAdd;->a(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method
