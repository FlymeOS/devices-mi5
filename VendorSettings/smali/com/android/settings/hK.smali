.class Lcom/android/settings/hK;
.super Ljava/lang/Object;
.source "SmsDefaultDialog.java"


# instance fields
.field final At:Ljava/lang/String;

.field final synthetic Au:Lcom/android/settings/hJ;

.field final icon:Landroid/graphics/drawable/Drawable;

.field final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/hJ;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/hK;->Au:Lcom/android/settings/hJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/android/settings/hK;->label:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/android/settings/hK;->icon:Landroid/graphics/drawable/Drawable;

    .line 149
    iput-object p4, p0, Lcom/android/settings/hK;->At:Ljava/lang/String;

    .line 150
    return-void
.end method
