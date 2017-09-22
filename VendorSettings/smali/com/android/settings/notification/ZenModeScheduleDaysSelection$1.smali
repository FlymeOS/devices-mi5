.class Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic alu:I

.field final synthetic alv:Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;I)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection$1;->alv:Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;

    iput p2, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection$1;->alu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection$1;->alv:Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v0}, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->a(Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection$1;->alu:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection$1;->alv:Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;

    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection$1;->alv:Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;

    invoke-static {v1}, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->b(Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/notification/ZenModeScheduleDaysSelection;->c([I)V

    .line 77
    return-void
.end method
