.class Lcom/android/vendorsettings/ga;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic vG:Lcom/android/vendorsettings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/vendorsettings/ga;->vG:Lcom/android/vendorsettings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/vendorsettings/ga;->vG:Lcom/android/vendorsettings/OwnerInfoSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/OwnerInfoSettings;->a(Lcom/android/vendorsettings/OwnerInfoSettings;Z)Z

    .line 125
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method
