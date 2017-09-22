.class Lcom/android/vendorsettings/eF;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "MiuiMasterClear.java"


# instance fields
.field final synthetic rA:Lcom/android/vendorsettings/eE;

.field private rz:Lcom/android/vendorsettings/eG;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/eE;Lcom/android/vendorsettings/eG;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/vendorsettings/eF;->rA:Lcom/android/vendorsettings/eE;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 631
    iput-object p2, p0, Lcom/android/vendorsettings/eF;->rz:Lcom/android/vendorsettings/eG;

    .line 632
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 636
    packed-switch p2, :pswitch_data_0

    .line 644
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/eF;->rz:Lcom/android/vendorsettings/eG;

    invoke-virtual {v0}, Lcom/android/vendorsettings/eG;->finish()V

    .line 645
    return-void

    .line 636
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
