.class Lcom/android/vendorsettings/bluetooth/DockService$2;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic RU:Lcom/android/vendorsettings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/bluetooth/DockService;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/DockService$2;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService$2;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/DockService;->a(Lcom/android/vendorsettings/bluetooth/DockService;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 576
    return-void
.end method
